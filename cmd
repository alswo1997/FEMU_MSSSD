nvme-admin.c:            if (req->sq == sq) {
nvme-admin.c:            memset(&req->cqe, 0, sizeof(req->cqe));
nvme-admin.c:            req->cqe.cid = cid;
nvme-admin.c:            req->status = NVME_CMD_ABORT_REQ;
nvme-io.c:        memset(&req->cqe, 0, sizeof(req->cqe));
nvme-io.c:        /* Coperd: record req->stime at earliest convenience */
nvme-io.c:        req->expire_time = req->stime = qemu_clock_get_ns(QEMU_CLOCK_REALTIME);
nvme-io.c:        req->cqe.cid = cmd.cid;
nvme-io.c:        req->cmd_opcode = cmd.opcode;
nvme-io.c:        memcpy(&req->cmd, &cmd, sizeof(NvmeCmd));
nvme-io.c:            req->status = status;
nvme-io.c:            req->status = status;
nvme-io.c:    NvmeSQueue *sq = req->sq;
nvme-io.c:    NvmeCqe *cqe = &req->cqe;
nvme-io.c:        femu_debug("%s,req,lba:%lu,lat:%lu\n", n->devname, req->slba, req->reqlat);
nvme-io.c:    cqe->status = cpu_to_le16((req->status << 1) | phase);
nvme-io.c:        if (now < req->expire_time) {
nvme-io.c:        cq = n->cq[req->sq->sqid];
nvme-io.c:        QTAILQ_INSERT_TAIL(&req->sq->req_list, req, entry);
nvme-io.c:        if (now - req->expire_time >= 20000) {
nvme-io.c:                           n->devname, pqueue_size(pq), now - req->expire_time,
nvme-io.c:        n->should_isr[req->sq->sqid] = true;
nvme-io.c:    req->is_write = (rw->opcode == NVME_CMD_WRITE) ? 1 : 0;
nvme-io.c:    if (nvme_map_prp(&req->qsg, &req->iov, prp1, prp2, data_size, n)) {
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-io.c:    assert((nlb << data_shift) == req->qsg.size);
nvme-io.c:    req->slba = slba;
nvme-io.c:    req->status = NVME_SUCCESS;
nvme-io.c:    req->nlb = nlb;
nvme-io.c:    ret = backend_rw(n->mbe, &req->qsg, &data_offset, req->is_write);
nvme-io.c:            nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-io.c:        req->status = NVME_SUCCESS;
nvme-io.c:                nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-io.c:    if (nvme_map_prp(&req->qsg, &req->iov, prp1, prp2, data_size, n)) {
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-io.c:    for (i = 0; i < req->qsg.nsg; i++) {
nvme-io.c:        uint32_t len = req->qsg.sg[i].len;
nvme-io.c:        nvme_addr_read(n, req->qsg.sg[i].base, tmp[1], len);
nvme-io.c:            qemu_sglist_destroy(&req->qsg);
nvme-io.c:    qemu_sglist_destroy(&req->qsg);
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
nvme-io.c:    req->ns = ns = &n->namespaces[nsid - 1];
nvme-io.c:        if (cq->cqid != 0 && cur_time < req->expire_time) {
nvme-io.c:            ntt = req->expire_time;
nvme-util.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
nvme-util.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-util.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-util.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
nvme-util.c:    if (!req->is_write && find_next_bit(ns->uncorrectable, elba, slba) < elba) {
nvme-util.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_UNRECOVERED_READ,
original_nvme-io.c:        memset(&req->cqe, 0, sizeof(req->cqe));
original_nvme-io.c:        /* Coperd: record req->stime at earliest convenience */
original_nvme-io.c:        req->expire_time = req->stime = qemu_clock_get_ns(QEMU_CLOCK_REALTIME);
original_nvme-io.c:        req->cqe.cid = cmd.cid;
original_nvme-io.c:        req->cmd_opcode = cmd.opcode;
original_nvme-io.c:        memcpy(&req->cmd, &cmd, sizeof(NvmeCmd));
original_nvme-io.c:            req->status = status;
original_nvme-io.c:            req->status = status;
original_nvme-io.c:    NvmeSQueue *sq = req->sq;
original_nvme-io.c:    NvmeCqe *cqe = &req->cqe;
original_nvme-io.c:        femu_debug("%s,req,lba:%lu,lat:%lu\n", n->devname, req->slba, req->reqlat);
original_nvme-io.c:    cqe->status = cpu_to_le16((req->status << 1) | phase);
original_nvme-io.c:        if (now < req->expire_time) {
original_nvme-io.c:        cq = n->cq[req->sq->sqid];
original_nvme-io.c:        QTAILQ_INSERT_TAIL(&req->sq->req_list, req, entry);
original_nvme-io.c:        if (now - req->expire_time >= 20000) {
original_nvme-io.c:                           n->devname, pqueue_size(pq), now - req->expire_time,
original_nvme-io.c:        n->should_isr[req->sq->sqid] = true;
original_nvme-io.c:    req->is_write = (rw->opcode == NVME_CMD_WRITE) ? 1 : 0;
original_nvme-io.c:    if (nvme_map_prp(&req->qsg, &req->iov, prp1, prp2, data_size, n)) {
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
original_nvme-io.c:    assert((nlb << data_shift) == req->qsg.size);
original_nvme-io.c:    req->slba = slba;
original_nvme-io.c:    req->status = NVME_SUCCESS;
original_nvme-io.c:    req->nlb = nlb;
original_nvme-io.c:    ret = backend_rw(n->mbe, &req->qsg, &data_offset, req->is_write);
original_nvme-io.c:            nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
original_nvme-io.c:        req->status = NVME_SUCCESS;
original_nvme-io.c:                nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
original_nvme-io.c:    if (nvme_map_prp(&req->qsg, &req->iov, prp1, prp2, data_size, n)) {
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_INVALID_FIELD,
original_nvme-io.c:    for (i = 0; i < req->qsg.nsg; i++) {
original_nvme-io.c:        uint32_t len = req->qsg.sg[i].len;
original_nvme-io.c:        nvme_addr_read(n, req->qsg.sg[i].base, tmp[1], len);
original_nvme-io.c:            qemu_sglist_destroy(&req->qsg);
original_nvme-io.c:    qemu_sglist_destroy(&req->qsg);
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
original_nvme-io.c:        nvme_set_error_page(n, req->sq->sqid, cmd->cid, NVME_LBA_RANGE,
original_nvme-io.c:    req->ns = ns = &n->namespaces[nsid - 1];
original_nvme-io.c:        if (cq->cqid != 0 && cur_time < req->expire_time) {
original_nvme-io.c:            ntt = req->expire_time;
