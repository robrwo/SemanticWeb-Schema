use utf8;

package SemanticWeb::Schema::BuddhistTemple;

# ABSTRACT: A Buddhist temple.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::PlaceOfWorship /;


use MooX::JSON_LD 'BuddhistTemple';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

A Buddhist temple.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::PlaceOfWorship>

=cut

1;
