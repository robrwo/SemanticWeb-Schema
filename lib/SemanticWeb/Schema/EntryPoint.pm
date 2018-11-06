use utf8;

package SemanticWeb::Schema::EntryPoint;

# ABSTRACT: An entry point

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'EntryPoint';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.4';

=encoding utf8

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
);


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
);


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
);


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
);


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
);


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
);


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
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
