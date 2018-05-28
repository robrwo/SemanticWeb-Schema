package SemanticWeb::Schema::EntryPoint;

# ABSTRACT: An entry point

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An entry point, within some Web-based protocol.




=head1 ATTRIBUTES


=head2 C<action_application>

C<actionApplication>

An application that can complete the request.


A action_application should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=cut

has action_application => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionApplication',
    json_ld_serializer => \&_serialize_action_application,
);

sub _serialize_action_application { $_[0]->_serializer('action_application') }


=head2 C<action_platform>

C<actionPlatform>

The high level platform(s) where the Action can be performed for the given
URL. To specify a specific application or operating system instance, use
actionApplication.


A action_platform should be one of the following types:

=over

=item C<Str>

=back

=cut

has action_platform => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'actionPlatform',
    json_ld_serializer => \&_serialize_action_platform,
);

sub _serialize_action_platform { $_[0]->_serializer('action_platform') }


=head2 C<application>



An application that can complete the request.


A application should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::SoftwareApplication']>

=back

=cut

has application => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'application',
    json_ld_serializer => \&_serialize_application,
);

sub _serialize_application { $_[0]->_serializer('application') }


=head2 C<content_type>

C<contentType>

The supported content type(s) for an EntryPoint response.


A content_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has content_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contentType',
    json_ld_serializer => \&_serialize_content_type,
);

sub _serialize_content_type { $_[0]->_serializer('content_type') }


=head2 C<encoding_type>

C<encodingType>

The supported encoding type(s) for an EntryPoint request.


A encoding_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has encoding_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'encodingType',
    json_ld_serializer => \&_serialize_encoding_type,
);

sub _serialize_encoding_type { $_[0]->_serializer('encoding_type') }


=head2 C<http_method>

C<httpMethod>

An HTTP method that specifies the appropriate HTTP method for a request to
an HTTP EntryPoint. Values are capitalized strings as used in HTTP.


A http_method should be one of the following types:

=over

=item C<Str>

=back

=cut

has http_method => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'httpMethod',
    json_ld_serializer => \&_serialize_http_method,
);

sub _serialize_http_method { $_[0]->_serializer('http_method') }


=head2 C<url_template>

C<urlTemplate>

An url template (RFC6570) that will be used to construct the target of the
execution of the action.


A url_template should be one of the following types:

=over

=item C<Str>

=back

=cut

has url_template => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'urlTemplate',
    json_ld_serializer => \&_serialize_url_template,
);

sub _serialize_url_template { $_[0]->_serializer('url_template') }




around json_ld_type => sub { return 'EntryPoint' };

around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ $fields ? @$fields : (), {
       'actionApplication' => \&_serialize_action_application,
       'actionPlatform' => \&_serialize_action_platform,
       'application' => \&_serialize_application,
       'contentType' => \&_serialize_content_type,
       'encodingType' => \&_serialize_encoding_type,
       'httpMethod' => \&_serialize_http_method,
       'urlTemplate' => \&_serialize_url_template,
    } ]
};

=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
