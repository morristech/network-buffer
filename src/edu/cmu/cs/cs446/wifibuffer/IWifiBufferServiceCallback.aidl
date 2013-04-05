package edu.cmu.cs.cs446.wifibuffer;

import edu.cmu.cs.cs446.wifibuffer.Response;

/**
 * Example of a callback interface used by IWifiBufferService to send
 * synchronous notifications back to its clients.  Note that this is a
 * one-way interface so the server does not block waiting for the client.
 */
oneway interface IWifiBufferServiceCallback {
    /**
     * Called when the service has a new value for you.
     */
    void receive(in Response response);
}
