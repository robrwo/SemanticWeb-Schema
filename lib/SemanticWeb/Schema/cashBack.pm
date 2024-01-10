use utf8;

package SemanticWeb::Schema::cashBack;

# ABSTRACT: A cardholder benefit that pays the cardholder a small percentage of their net expenditures.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cashBack';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A cardholder benefit that pays the cardholder a small percentage of their
net expenditures.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
