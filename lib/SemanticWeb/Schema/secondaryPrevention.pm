use utf8;

package SemanticWeb::Schema::secondaryPrevention;

# ABSTRACT: A preventative therapy used to prevent reoccurrence of the medical condition after an initial episode of the condition.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'secondaryPrevention';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A preventative therapy used to prevent reoccurrence of the medical
condition after an initial episode of the condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
