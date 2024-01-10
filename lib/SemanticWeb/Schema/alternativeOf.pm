use utf8;

package SemanticWeb::Schema::alternativeOf;

# ABSTRACT: Another gene which is a variation of this one.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'alternativeOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Another gene which is a variation of this one.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
