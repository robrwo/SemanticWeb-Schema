use utf8;

package SemanticWeb::Schema::MusicStore;

# ABSTRACT: A music store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'MusicStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.5';

=encoding utf8

=head1 DESCRIPTION

A music store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
