use utf8;

package SemanticWeb::Schema::workExample;

# ABSTRACT: Example/instance/realization/derivation of the concept of this creative work

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'workExample';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Example/instance/realization/derivation of the concept of this creative
work. E.g. the paperback edition, first edition, or e-book.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
