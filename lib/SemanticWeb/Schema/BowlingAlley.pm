use utf8;

package SemanticWeb::Schema::BowlingAlley;

# ABSTRACT: A bowling alley.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'BowlingAlley';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A bowling alley.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
