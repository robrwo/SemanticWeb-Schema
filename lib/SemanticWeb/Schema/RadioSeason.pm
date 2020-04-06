use utf8;

package SemanticWeb::Schema::RadioSeason;

# ABSTRACT: Season dedicated to radio broadcast and associated online delivery.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWorkSeason /;


use MooX::JSON_LD 'RadioSeason';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

Season dedicated to radio broadcast and associated online delivery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWorkSeason>

=cut

1;
