use utf8;

package SemanticWeb::Schema::PathologyTest;

# ABSTRACT: A medical test performed by a laboratory that typically involves examination of a tissue sample by a pathologist.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalTest /;


use MooX::JSON_LD 'PathologyTest';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v15.0.1';

=encoding utf8

=head1 DESCRIPTION

A medical test performed by a laboratory that typically involves
examination of a tissue sample by a pathologist.




=head1 ATTRIBUTES


=head2 C<tissue_sample>

C<tissueSample>

The type of tissue sample required for the test.


A tissue_sample should be one of the following types:

=over

=item C<Str>

=back

=head2 C<_has_tissue_sample>

A predicate for the L</tissue_sample> attribute.

=cut

has tissue_sample => (
    is        => 'rw',
    predicate => '_has_tissue_sample',
    json_ld   => 'tissueSample',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTest>

=cut

1;
