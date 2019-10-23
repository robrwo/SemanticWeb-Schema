use utf8;

package SemanticWeb::Schema::Season;

# ABSTRACT: A media season e

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'Season';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

A media season e.g. tv, radio, video game etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
