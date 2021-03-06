package edu.cmu.cs.cs446.networkbuffer;

import edu.cmu.cs.cs446.networkbuffer.INetworkServiceCallback;
import edu.cmu.cs.cs446.networkbuffer.ParcelableByteArray;

/**
 * Defines an interface for calling the remote network service 
 * (which runs in a separate process).
 */
interface INetworkService {

    /**
     * Register the callback interface with the service.
     */
    void registerCallback(INetworkServiceCallback callback);

    /**
     * Unregister the callback interface with the service.
     */
    void unregisterCallback(INetworkServiceCallback callback);

    /**
     * Register a new delay socket for the client. Returns a handle id
     * for the client to use to make future requets.
     */
    long open(String host, int port);

    /**
     * Send a simple network request to be performed asynchronously
     * by the service (at some point in the near future).
     */
	void send(long handle, in ParcelableByteArray request, long delay);
	
	/**
     * Close the delay socket with the given handle id. No new requests
     * will be accepted after this call (although any pending requests
     * will still wait to be executed at a later time).
     */
    void shutdown(long handle);
}
