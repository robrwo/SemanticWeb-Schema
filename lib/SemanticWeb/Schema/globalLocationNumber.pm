use utf8;

package SemanticWeb::Schema::globalLocationNumber;

# ABSTRACT: The [Global Location Number](http://www

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'globalLocationNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also
referred to as International Location Number or ILN) of the respective
organization, person, or place. The GLN is a 13-digit number used to
identify parties and physical locations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
