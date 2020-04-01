use utf8;

package SemanticWeb::Schema::MedicalGuidelineRecommendation;

# ABSTRACT: A guideline recommendation that is regarded as efficacious and where quality of the data supporting the recommendation is sound.

use Moo;

extends qw/ SemanticWeb::Schema::MedicalGuideline /;


use MooX::JSON_LD 'MedicalGuidelineRecommendation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.3';

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

=head2 C<_has_recommendation_strength>

A predicate for the L</recommendation_strength> attribute.

=cut

has recommendation_strength => (
    is        => 'rw',
    predicate => '_has_recommendation_strength',
    json_ld   => 'recommendationStrength',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalGuideline>

=cut

1;
