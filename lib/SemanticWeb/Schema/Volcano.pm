use utf8;

package SemanticWeb::Schema::Volcano;

# ABSTRACT: A volcano, like Fuji san.

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use MooX::JSON_LD 'Volcano';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.01.0';

=encoding utf8

=head1 DESCRIPTION

A volcano, like Fuji san.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
