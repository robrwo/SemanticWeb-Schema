use utf8;

package SemanticWeb::Schema::albumProductionType;

# ABSTRACT: Classification of the album by its type of content: soundtrack

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'albumProductionType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Classification of the album by its type of content: soundtrack, live album,
studio album, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
