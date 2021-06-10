fbt:netlink:netlink_send:entry
/arg0 == NULL/
{
        stack();
	printf("m is null in netlink");
}

fbt:netlink:netlink_send:entry
/arg0 != NULL/
{
        stack();
	this->m = (struct mbuf*) arg0;
	printf("m_len: %d\n", this->m->m_len);
	printf("length long: %d\n", sizeof(long));
}
