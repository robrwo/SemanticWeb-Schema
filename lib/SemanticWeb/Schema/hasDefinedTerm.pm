use utf8;

package SemanticWeb::Schema::hasDefinedTerm;

# ABSTRACT: A Defined Term contained in this term set.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasDefinedTerm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A Defined Term contained in this term set.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
