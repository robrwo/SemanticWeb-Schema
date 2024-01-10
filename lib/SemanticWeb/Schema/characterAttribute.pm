use utf8;

package SemanticWeb::Schema::characterAttribute;

# ABSTRACT: A piece of data that represents a particular aspect of a fictional character (skill

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'characterAttribute';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A piece of data that represents a particular aspect of a fictional
character (skill, power, character points, advantage, disadvantage).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
