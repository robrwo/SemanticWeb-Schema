use utf8;

package SemanticWeb::Schema::ImagingTest;

# ABSTRACT: Any medical imaging modality typically used for diagnostic purposes.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalTest /;


use MooX::JSON_LD 'ImagingTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v6.0.0';

=encoding utf8

=head1 DESCRIPTION

Any medical imaging modality typically used for diagnostic purposes.




=head1 ATTRIBUTES


=head2 C<imaging_technique>

C<imagingTechnique>

Imaging technique used.


A imaging_technique should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalImagingTechnique']>

=back

=head2 C<_has_imaging_technique>

A predicate for the L</imaging_technique> attribute.

=cut

has imaging_technique => (
    is        => 'rw',
    predicate => '_has_imaging_technique',
    json_ld   => 'imagingTechnique',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTest>

=cut

1;
