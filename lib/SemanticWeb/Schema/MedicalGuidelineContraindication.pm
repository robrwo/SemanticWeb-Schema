use utf8;

package SemanticWeb::Schema::MedicalGuidelineContraindication;

# ABSTRACT: A guideline contraindication that designates a process as harmful and where quality of the data supporting the contraindication is sound.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalGuideline /;


use MooX::JSON_LD 'MedicalGuidelineContraindication';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

A guideline contraindication that designates a process as harmful and where
quality of the data supporting the contraindication is sound.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalGuideline>

=cut

1;
