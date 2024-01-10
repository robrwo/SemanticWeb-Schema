use utf8;

package SemanticWeb::Schema::episodes;

# ABSTRACT: An episode of a TV/radio series or season.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'episodes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An episode of a TV/radio series or season.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
