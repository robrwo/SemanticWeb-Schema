use utf8;

package SemanticWeb::Schema::Residence;

# ABSTRACT: The place where a person lives.

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'Residence';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

The place where a person lives.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
