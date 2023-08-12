# Asynchronous_FIFO

1.async_FIFO. v is the top level module \n
2.fifo_mem.v is the dual-port memory which is being read and written
3.rptr_empty.v is used to generate gray coded read pointer for transmitting to the writer end and generate a FIFO_empty signal for the reader
4.wptr_full.v is used to generate gray coded write pointer for transmitting to the reader end and generate a FIFO_full signal for the reader
5.sync_r2w.v is double flop synchroniser to synchronise read pointer to writer's clock domain
6.sync_w2r.v is double flop synchroniser to synchronise write pointer to reader's clock domain
