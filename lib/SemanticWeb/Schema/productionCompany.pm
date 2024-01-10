use utf8;

package SemanticWeb::Schema::productionCompany;

# ABSTRACT: The production company or studio responsible for the item

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'productionCompany';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The production company or studio responsible for the item, e.g. series,
video game, episode etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
