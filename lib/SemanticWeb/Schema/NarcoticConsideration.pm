use utf8;

package SemanticWeb::Schema::NarcoticConsideration;

# ABSTRACT: Item is a narcotic as defined by the [1961 UN convention](https://www

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'NarcoticConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Item is a narcotic as defined by the [1961 UN
convention](https://www.incb.org/incb/en/narcotic-drugs/Yellowlist/yellow-l
ist.html), for example marijuana or heroin.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
