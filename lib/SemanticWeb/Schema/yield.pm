use utf8;

package SemanticWeb::Schema::yield;

# ABSTRACT: The quantity that results by performing instructions

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'yield';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The quantity that results by performing instructions. For example, a paper
airplane, 10 personalized candles.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
