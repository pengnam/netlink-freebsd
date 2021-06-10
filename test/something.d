fbt:netlink:netlink_send:entry
/arg2 == NULL/
{
        stack();
	printf("m is null in netlink");
}

fbt:netlink:netlink_send:entry
/arg2 != NULL/
{
        stack();
	this->m = (struct mbuf*) arg2;
	printf("m_len: %d\n", this->m->m_len);
	printf("length long: %d\n", sizeof(long));
}
