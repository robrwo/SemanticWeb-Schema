use utf8;

package SemanticWeb::Schema::hasCategoryCode;

# ABSTRACT: A Category code contained in this code set.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasCategoryCode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A Category code contained in this code set.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
