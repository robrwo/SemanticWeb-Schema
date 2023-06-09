use utf8;

package SemanticWeb::Schema::AppendAction;

# ABSTRACT: The act of inserting at the end if an ordered collection.

use Moo;

extends qw/ SemanticWeb::Schema::InsertAction /;


use MooX::JSON_LD 'AppendAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

The act of inserting at the end if an ordered collection.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InsertAction>

=cut

1;
