use utf8;

package SemanticWeb::Schema::Mountain;

# ABSTRACT: A mountain

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use MooX::JSON_LD 'Mountain';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v12.0.1';

=encoding utf8

=head1 DESCRIPTION

A mountain, like Mount Whitney or Mount Everest.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
