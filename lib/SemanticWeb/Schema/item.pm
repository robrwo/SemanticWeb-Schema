use utf8;

package SemanticWeb::Schema::item;

# ABSTRACT: An entity represented by an entry in a list or data feed (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'item';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An entity represented by an entry in a list or data feed (e.g. an 'artist'
in a list of 'artists').




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
