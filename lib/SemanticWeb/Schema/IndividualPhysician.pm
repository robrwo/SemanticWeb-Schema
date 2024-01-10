use utf8;

package SemanticWeb::Schema::IndividualPhysician;

# ABSTRACT: An individual medical practitioner

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Physician /;


use MooX::JSON_LD 'IndividualPhysician';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An individual medical practitioner. For their official address use [[address]], for affiliations to hospitals use [[hospitalAffiliation]]. 
The [[practicesAt]] property can be used to indicate L<SemanticWeb::Schema::MedicalOrganization> hospitals, clinics, pharmacies etc. where this physician practices.



=head1 ATTRIBUTES


=head2 C<practices_at>

C<practicesAt>

A L<SemanticWeb::Schema::MedicalOrganization> where the L<SemanticWeb::Schema::IndividualPhysician> practices.

A practices_at should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalOrganization']>

=back

=head2 C<_has_practices_at>

A predicate for the L</practices_at> attribute.

=cut

has practices_at => (
    is        => 'rw',
    predicate => '_has_practices_at',
    json_ld   => 'practicesAt',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Physician>

=cut

1;
