package LDF::Schema::EntryPoint;

# ABSTRACT: An entry point

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An entry point, within some Web-based protocol.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/ext-meta.rdf>

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<action_application>

C<actionApplication>

An application that can complete the request.


A action_application should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SoftwareApplication']>

=back

=cut

has action_application => (
    is        => 'rw',
    predicate => 1,
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
);


=head2 C<application>



An application that can complete the request.


A application should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::SoftwareApplication']>

=back

=cut

has application => (
    is        => 'rw',
    predicate => 1,
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
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EntryPoint' }



=head2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { actionApplication => 'action_application' },
      { actionPlatform => 'action_platform' },
      { application => 'application' },
      { contentType => 'content_type' },
      { encodingType => 'encoding_type' },
      { httpMethod => 'http_method' },
      { urlTemplate => 'url_template' },
    ]
};




=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
