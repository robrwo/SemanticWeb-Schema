use utf8;

package SemanticWeb::Schema::Quiz;

# ABSTRACT: Quiz: A test of knowledge

use Moo;

extends qw/ SemanticWeb::Schema::LearningResource /;


use MooX::JSON_LD 'Quiz';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.0';

=encoding utf8

=head1 DESCRIPTION

Quiz: A test of knowledge, skills and abilities.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::LearningResource>

=cut

1;
