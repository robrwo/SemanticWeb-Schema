use utf8;

package SemanticWeb::Schema::BookStore;

# ABSTRACT: A bookstore.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'BookStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A bookstore.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
