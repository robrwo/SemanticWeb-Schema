use utf8;

package SemanticWeb::Schema::EducationalOrganization;

# ABSTRACT: An educational organization.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure SemanticWeb::Schema::Organization /;


use MooX::JSON_LD 'EducationalOrganization';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

An educational organization.




=head1 ATTRIBUTES


=head2 C<alumni>



Alumni of an organization.


A alumni should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=head2 C<_has_alumni>

A predicate for the L</alumni> attribute.

=cut

has alumni => (
    is        => 'rw',
    predicate => '_has_alumni',
    json_ld   => 'alumni',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Organization>

=cut

1;
