use utf8;

package SemanticWeb::Schema::MedicalGuidelineRecommendation;

# ABSTRACT: A guideline recommendation that is regarded as efficacious and where quality of the data supporting the recommendation is sound.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalGuideline /;


use MooX::JSON_LD 'MedicalGuidelineRecommendation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A guideline recommendation that is regarded as efficacious and where
quality of the data supporting the recommendation is sound.




=head1 ATTRIBUTES


=head2 C<recommendation_strength>

C<recommendationStrength>

Strength of the guideline's recommendation (e.g. 'class I').


A recommendation_strength should be one of the following types:

=over

=item C<Str>

=back

=cut

has recommendation_strength => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recommendationStrength',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalGuideline>

=cut

1;
