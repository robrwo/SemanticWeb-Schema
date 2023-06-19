use utf8;

package SemanticWeb::Schema::MovieRentalStore;

# ABSTRACT: A movie rental store.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'MovieRentalStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.1';

=encoding utf8

=head1 DESCRIPTION

A movie rental store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
