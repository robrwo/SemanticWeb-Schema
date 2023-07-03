use utf8;

package SemanticWeb::Schema::AddAction;

# ABSTRACT: The act of editing by adding an object to a collection.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use MooX::JSON_LD 'AddAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of editing by adding an object to a collection.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
