use utf8;

package SemanticWeb::Schema::algorithm;

# ABSTRACT: The algorithm or rules to follow to compute the score.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'algorithm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The algorithm or rules to follow to compute the score.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
