use utf8;

package SemanticWeb::Schema::legislationLegalValue;

# ABSTRACT: The legal value of this legislation file

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationLegalValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The legal value of this legislation file. The same legislation can be
written in multiple files with different legal values. Typically a
digitally signed PDF have a "stronger" legal value than the HTML file of
the same act.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
