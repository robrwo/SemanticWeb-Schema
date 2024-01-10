use utf8;

package SemanticWeb::Schema::VenueMap;

# ABSTRACT: A venue map (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'VenueMap';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A venue map (e.g. for malls, auditoriums, museums, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
