# Asynchronous_FIFO with depth of 2**N

1. async_FIFO. v is the top level module <br /><br />
2. fifo_mem.v is the dual-port memory which is being read and written <br /><br />
3. rptr_empty.v is used to generate gray coded read pointer for transmitting to the writer end and generate a FIFO_empty signal for the reader <br /><br />
4. wptr_full.v is used to generate gray coded write pointer for transmitting to the reader end and generate a FIFO_full signal for the reader <br /><br />
5. sync_r2w.v is double flop synchroniser to synchronise read pointer to writer's clock domain <br /><br />
6. sync_w2r.v is double flop synchroniser to synchronise write pointer to reader's clock domain <br /><br />
