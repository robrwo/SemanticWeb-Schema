use utf8;

package SemanticWeb::Schema::acceptedAnswer;

# ABSTRACT: The answer(s) that has been accepted as best

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'acceptedAnswer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The answer(s) that has been accepted as best, typically on a
Question/Answer site. Sites vary in their selection mechanisms, e.g.
drawing on community opinion and/or the view of the Question author.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
