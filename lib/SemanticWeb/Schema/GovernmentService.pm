use utf8;

package SemanticWeb::Schema::GovernmentService;

# ABSTRACT: A service provided by a government organization

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'GovernmentService';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A service provided by a government organization, e.g. food stamps, veterans
benefits, etc.




=head1 ATTRIBUTES


=head2 C<jurisdiction>



Indicates a legal jurisdiction, e.g. of some legislation, or where some
government service is based.


A jurisdiction should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=item C<Str>

=back

=head2 C<_has_jurisdiction>

A predicate for the L</jurisdiction> attribute.

=cut

has jurisdiction => (
    is        => 'rw',
    predicate => '_has_jurisdiction',
    json_ld   => 'jurisdiction',
);


=head2 C<service_operator>

C<serviceOperator>

The operating organization, if different from the provider. This enables
the representation of services that are provided by an organization, but
operated by another organization like a subcontractor.


A service_operator should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=head2 C<_has_service_operator>

A predicate for the L</service_operator> attribute.

=cut

has service_operator => (
    is        => 'rw',
    predicate => '_has_service_operator',
    json_ld   => 'serviceOperator',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
