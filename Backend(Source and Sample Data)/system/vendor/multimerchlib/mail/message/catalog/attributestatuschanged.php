<?php

namespace MultiMerch\Mail\Message\Catalog;

use MultiMerch\Mail\Message\Message;

class AttributeStatusChanged extends Message
{
	protected $template = 'catalog/attribute_status_changed.tpl';

	public function beforeSend()
	{
		$this->setSubject('[' . $this->getSender() . '] ' . $this->translate('ms_mail_subject_attribute_status_changed'));
	}
}