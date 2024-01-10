use utf8;

package SemanticWeb::Schema::reviewBody;

# ABSTRACT: The actual body of the review.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'reviewBody';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The actual body of the review.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
