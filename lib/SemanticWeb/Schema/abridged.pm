use utf8;

package SemanticWeb::Schema::abridged;

# ABSTRACT: Indicates whether the book is an abridged edition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'abridged';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether the book is an abridged edition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
