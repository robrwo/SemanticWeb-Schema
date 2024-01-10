use utf8;

package SemanticWeb::Schema::AlcoholConsideration;

# ABSTRACT: Item contains alcohol or promotes alcohol consumption.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'AlcoholConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Item contains alcohol or promotes alcohol consumption.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
