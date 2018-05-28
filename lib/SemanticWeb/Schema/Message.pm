package SemanticWeb::Schema::Message;

# ABSTRACT: A single message from a sender to one or more organizations or people.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A single message from a sender to one or more organizations or people.




=head1 ATTRIBUTES


=head2 C<bcc_recipient>

C<bccRecipient>

A sub property of recipient. The recipient blind copied on a message.


A bcc_recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has bcc_recipient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bccRecipient',
    json_ld_serializer => \&_serialize_bcc_recipient,
);

sub _serialize_bcc_recipient { $_[0]->_serializer('bcc_recipient') }


=head2 C<cc_recipient>

C<ccRecipient>

A sub property of recipient. The recipient copied on a message.


A cc_recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has cc_recipient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'ccRecipient',
    json_ld_serializer => \&_serialize_cc_recipient,
);

sub _serialize_cc_recipient { $_[0]->_serializer('cc_recipient') }


=head2 C<date_read>

C<dateRead>

The date/time at which the message has been read by the recipient if a
single recipient exists.


A date_read should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_read => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateRead',
    json_ld_serializer => \&_serialize_date_read,
);

sub _serialize_date_read { $_[0]->_serializer('date_read') }


=head2 C<date_received>

C<dateReceived>

The date/time the message was received if a single recipient exists.


A date_received should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_received => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateReceived',
    json_ld_serializer => \&_serialize_date_received,
);

sub _serialize_date_received { $_[0]->_serializer('date_received') }


=head2 C<date_sent>

C<dateSent>

The date/time at which the message was sent.


A date_sent should be one of the following types:

=over

=item C<Str>

=back

=cut

has date_sent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dateSent',
    json_ld_serializer => \&_serialize_date_sent,
);

sub _serialize_date_sent { $_[0]->_serializer('date_sent') }


=head2 C<message_attachment>

C<messageAttachment>

A CreativeWork attached to the message.


A message_attachment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has message_attachment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'messageAttachment',
    json_ld_serializer => \&_serialize_message_attachment,
);

sub _serialize_message_attachment { $_[0]->_serializer('message_attachment') }


=head2 C<recipient>



A sub property of participant. The participant who is at the receiving end
of the action.


A recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has recipient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recipient',
    json_ld_serializer => \&_serialize_recipient,
);

sub _serialize_recipient { $_[0]->_serializer('recipient') }


=head2 C<sender>



A sub property of participant. The participant who is at the sending end of
the action.


A sender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has sender => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'sender',
    json_ld_serializer => \&_serialize_sender,
);

sub _serialize_sender { $_[0]->_serializer('sender') }


=head2 C<to_recipient>

C<toRecipient>

A sub property of recipient. The recipient who was directly sent the
message.


A to_recipient should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Audience']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=item C<InstanceOf['SemanticWeb::Schema::ContactPoint']>

=back

=cut

has to_recipient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'toRecipient',
    json_ld_serializer => \&_serialize_to_recipient,
);

sub _serialize_to_recipient { $_[0]->_serializer('to_recipient') }




around json_ld_type => sub { return 'Message' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'bccRecipient' => \&_serialize_bcc_recipient,
       'ccRecipient' => \&_serialize_cc_recipient,
       'dateRead' => \&_serialize_date_read,
       'dateReceived' => \&_serialize_date_received,
       'dateSent' => \&_serialize_date_sent,
       'messageAttachment' => \&_serialize_message_attachment,
       'recipient' => \&_serialize_recipient,
       'sender' => \&_serialize_sender,
       'toRecipient' => \&_serialize_to_recipient,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
