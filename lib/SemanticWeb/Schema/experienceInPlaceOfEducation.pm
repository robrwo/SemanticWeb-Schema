use utf8;

package SemanticWeb::Schema::experienceInPlaceOfEducation;

# ABSTRACT: Indicates whether a [[JobPosting]] will accept experience (as indicated by [[OccupationalExperienceRequirements]]) in place of its formal educational qualifications (as indicated by [[educationRequirements]])

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'experienceInPlaceOfEducation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether a L<SemanticWeb::Schema::JobPosting> will accept experience (as indicated by L<SemanticWeb::Schema::OccupationalExperienceRequirements>) in place of its formal educational qualifications (as indicated by [[educationRequirements]]). If true, indicates that satisfying one of these requirements is sufficient.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
