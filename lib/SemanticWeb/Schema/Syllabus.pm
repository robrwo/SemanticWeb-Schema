use utf8;

package SemanticWeb::Schema::Syllabus;

# ABSTRACT: A syllabus that describes the material covered in a course

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::LearningResource /;


use MooX::JSON_LD 'Syllabus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A syllabus that describes the material covered in a course, often with several such sections per L<SemanticWeb::Schema::Course> so that a distinct [[timeRequired]] can be provided for that section of the L<SemanticWeb::Schema::Course>.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LearningResource>

=cut

1;
