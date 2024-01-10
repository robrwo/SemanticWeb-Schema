use utf8;

package SemanticWeb::Schema::repeatCount;

# ABSTRACT: Defines the number of times a recurring [[Event]] will take place.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'repeatCount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Defines the number of times a recurring L<SemanticWeb::Schema::Event> will take place.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
