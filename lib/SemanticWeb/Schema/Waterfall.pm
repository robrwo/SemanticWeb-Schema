use utf8;

package SemanticWeb::Schema::Waterfall;

# ABSTRACT: A waterfall, like Niagara.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::BodyOfWater /;


use MooX::JSON_LD 'Waterfall';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.2';

=encoding utf8

=head1 DESCRIPTION

A waterfall, like Niagara.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::BodyOfWater>

=cut

1;
