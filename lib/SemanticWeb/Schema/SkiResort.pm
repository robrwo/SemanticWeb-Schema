use utf8;

package SemanticWeb::Schema::SkiResort;

# ABSTRACT: A ski resort.

use Moo;

extends qw/ SemanticWeb::Schema::Resort SemanticWeb::Schema::SportsActivityLocation /;


use MooX::JSON_LD 'SkiResort';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v14.0.1';

=encoding utf8

=head1 DESCRIPTION

A ski resort.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::SportsActivityLocation>

=cut

1;
