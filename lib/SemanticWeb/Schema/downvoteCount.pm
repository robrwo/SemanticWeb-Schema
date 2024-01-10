use utf8;

package SemanticWeb::Schema::downvoteCount;

# ABSTRACT: The number of downvotes this question

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'downvoteCount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of downvotes this question, answer or comment has received from
the community.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
